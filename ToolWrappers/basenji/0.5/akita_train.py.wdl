version 1.0

task AkitaTrainpy {
  input {
    Boolean? train_keras_fit
    Directory? output_directory_defaulttrainout
    String? restore
    Boolean? trunk
    String? tfr_train
    String? tfr_eval
    Int data_one_dir
  }
  command <<<
    akita_train_py \
      ~{data_one_dir} \
      ~{if (train_keras_fit) then "-k" else ""} \
      ~{if defined(output_directory_defaulttrainout) then ("-o " +  '"' + output_directory_defaulttrainout + '"') else ""} \
      ~{if defined(restore) then ("--restore " +  '"' + restore + '"') else ""} \
      ~{if (trunk) then "--trunk" else ""} \
      ~{if defined(tfr_train) then ("--tfr_train " +  '"' + tfr_train + '"') else ""} \
      ~{if defined(tfr_eval) then ("--tfr_eval " +  '"' + tfr_eval + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    train_keras_fit: "Train with Keras fit method [Default: False]"
    output_directory_defaulttrainout: "Output directory for test statistics [Default:\\ntrain_out]"
    restore: "Restore model and continue training [Default: none]"
    trunk: "Restore only model trunk [Default: False]"
    tfr_train: "Training TFR pattern string appended to\\ndata_dir/tfrecords for subsetting [Default: none]"
    tfr_eval: "Evaluation TFR pattern string appended to\\ndata_dir/tfrecords for subsetting [Default: none]\\n"
    data_one_dir: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaulttrainout = "${in_output_directory_defaulttrainout}"
  }
}