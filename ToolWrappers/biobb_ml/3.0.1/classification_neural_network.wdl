version 1.0

task ClassificationNeuralNetwork {
  command <<<
    classification_neural_network
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}